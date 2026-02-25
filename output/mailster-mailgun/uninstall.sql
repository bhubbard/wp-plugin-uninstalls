-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailster_check_bounces_lock', '_mailster_mailgun_last_bounce_check');

