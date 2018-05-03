# == Class: aptly
#
# Main class. See README.markdown for more documentation.
#
class aptly (
  $version              = $aptly::params::version,
  $install_repo         = $aptly::params::install_repo,
  $repo_location        = $aptly::params::repo_location,
  $repo_release         = $aptly::params::repo_release,
  $repo_repos           = $aptly::params::repo_repos,
  $repo_keyserver       = $aptly::params::repo_keyserver,
  $repo_key             = $aptly::params::repo_key,
  $enable_service       = $aptly::params::enable_service,
  $port                 = $aptly::params::port,
  $bind                 = $aptly::params::bind,
  $config_filepath      = $aptly::params::config_filepath,
  $manage_user          = $aptly::params::manage_user,
  $user                 = $aptly::params::user,
  $uid                  = $aptly::params::uid,
  $group                = $aptly::params::group,
  $gid                  = $aptly::params::gid,
  $root_dir             = $aptly::params::root_dir,
  $architectures        = $aptly::params::architectures,
  $ppa_dist             = $aptly::params::ppa_dist,
  $ppa_codename         = $aptly::params::ppa_codename,
  $properties           = $aptly::params::properties,
  $s3_publish_endpoints = $aptly::params::s3_publish_endpoints,
  $swift_publish_endpoints = $aptly::params::swift_publish_endpoints,
  $enable_api           = $aptly::params::enable_api,
  $api_port             = $aptly::params::api_port,
  $api_bind             = $aptly::params::api_bind,
  $api_nolock           = $aptly::params::api_nolock,
  $manage_xz_utils      = $aptly::params::manage_xz_utils,
  $recurse_root_dir     = $aptly::params::recurse_root_dir,
) inherits aptly::params {

  class { '::aptly::install': } -> class { '::aptly::config':  } ~> class { '::aptly::service': } -> Class['::aptly']
}
