-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mw-wp-form-line-notify-errors', 'mw-wp-form-line-notify-updated');

