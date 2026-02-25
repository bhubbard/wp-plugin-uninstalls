-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('print_app_domain_key', 'print_app_secret_key', 'print_app_cust_download_link');

