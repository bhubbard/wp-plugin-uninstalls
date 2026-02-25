-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qcclr_autoreply_settings', 'qcld_clr_key', 'qcld_clr_spam_protection', 'qcld_clr_spam', 'qcld_clr_delivery', 'qcld_clr_speed', 'qcld_clr_spam_message', 'comment_link_remove_option_name', 'qcclr_settings');

