-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woob_woo_block_emails_settings', 'woob_woo_block_emails_counter');

