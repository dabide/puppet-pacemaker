define pacemaker::resource::filesystem($device,
                                       $directory,
                                       $fstype,
                                       $group='',
                                       $interval='30s',
                                       $ensure='present') {
  $resource_id = delete("fs-${directory}", '/')
  pcmk_resource { $resource_id:
    resource_type   => 'Filesystem',
    resource_params => "device=${device} directory=${directory} fstype=${fstype}",
    group           => $group,
    interval        => $interval,
    ensure          => $ensure,
  }
}
