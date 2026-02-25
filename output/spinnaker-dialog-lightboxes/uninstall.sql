-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spinnaker_img_trigger_height', 'spinnaker_download_stats', 'spinnaker_install_date');

