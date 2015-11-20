module WebFilter
  HOSTS = "/etc/hosts"
  @hostsFile = File.read(HOSTS)
  def WebFilter.approve (hostname, ip)
    File.write(HOSTS, "#{@hostsFile} \n#{ip} #{hostname}")
  end

  def WebFilter.deny (hostname)
    File.write(HOSTS, "#{@hostsFile} \n0.0.0.0 #{hostname}")
  end
end
