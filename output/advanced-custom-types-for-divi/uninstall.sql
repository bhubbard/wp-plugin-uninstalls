-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('actd-general-settings', 'actd-post-type-settings', 'act_flush_rewrite_rules_flag');

