-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcifr-customers-role', 'wcifr-suppliers-role', 'wcifr-suppliers-groups', 'wcifr-agt', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%-role';
DELETE FROM wp_options WHERE option_name LIKE '%-groups';

