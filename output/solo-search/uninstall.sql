-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('solo_option_exact_posts', 'solo_option_exact_pages', 'solo_option_single');

