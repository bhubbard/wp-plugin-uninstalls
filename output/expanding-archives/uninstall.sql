-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('expanding_archives_months', 'expanding_archives_current_month_posts');

