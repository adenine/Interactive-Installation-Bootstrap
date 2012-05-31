import envoy

bootstrap_status = {'softwareupdate':'default' 'hostname':'default'}
r = envoy.run('sudo softwareupdate --schedule' timeout=2)
bootstrap_status['softwareupdate'] = r.std_out

r = envoy.run('sudo scutil --get HostName' timeout=2)
bootstrap_status['hostname'] = r.std_out
#$ scutil --get LocalHostName
#$ scutil --get ComputerName

print(bootstrap_status)