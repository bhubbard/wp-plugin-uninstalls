-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acc_css_everywhere', 'acc_css_posts', 'acc_css_pages');

