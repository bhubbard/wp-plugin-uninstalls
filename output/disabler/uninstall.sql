-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hbp_disabler_admin_notices', 'hbp_disabler_db_version', 'disabler_autop', 'disabler_options', 'disabler_settings', 'hbp_disabler_admin_install_timestamp', 'hbp_disabler_settings', 'hbp_disabler_version', 'disabler_version', 'disabler_xmlrpc', 'disabler_autosave', 'disabler_selfping', 'disabler_norss', 'disabler_capitalp', 'disabler_revisions', 'disabler_nourl', 'new_version', 'disabler_smartquotes', 'disabler_plugin_version', 'disabler_admin_notices', 'disabler_db_version', 'hbp_disabler_installing', '_hbp_disabler_activation_redirect', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE 'hbp_disabler_admin_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice';

