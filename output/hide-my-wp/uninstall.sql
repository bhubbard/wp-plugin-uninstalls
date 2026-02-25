-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hmw_options', 'active_sitewide_plugins', 'woocommerce_queue_flush_rewrite_rules', 'comet_cache_options', 'wphb_settings', 'cdn_enabler', 'ossdl_off_cdn_url', 'ossdl_off_include_dirs', 'ewww_image_optimizer_exactdn_domain', 'jch_options', 'hyper-cache', 'bunnycdn', 'wp-smush-cdn_status', 'breeze_file_settings', 'litespeed.conf.cache-exc', 'mepr_options', 'whl_page', 'pp_settings_data', 'woocommerce_myaccount_page_id', 'rlrsssl_options', 'siteground_optimizer_combine_css', 'siteground_optimizer_combine_javascript', 'um_options', 'wpum_settings', 'itsec-storage', 'woocommerce_enable_myaccount_registration', 'hmwp_disable', 'hmwp_activate', 'hmwp_restore', 'hmwp_local_ip', 'hmwp_update', 'update_plugins', 'update_themes', 'hmwp_lispeed_ips', 'hmwp_disable_hide_urls');

