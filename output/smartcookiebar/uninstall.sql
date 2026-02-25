-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smartcb_banner_title', 'smartcb_banner_desc', 'smartcb_banner_accept_btn', 'smartcb_banner_decline_btn');

