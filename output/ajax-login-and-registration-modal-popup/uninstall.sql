-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lrm_general', 'lrm_advanced', 'lrm_messages', 'lrm_mails', 'lrm_beg_message', 'lrm-forms-init', 'lrm_general_pro', 'lrm_auto_trigger', 'lrm_integrations', 'lrm_messages_pro', 'lrm_pro_version', 'fv_notices');
DELETE FROM wp_options WHERE option_name LIKE 'lrm_%';
DELETE FROM wp_options WHERE option_name LIKE '%]';
DELETE FROM wp_options WHERE option_name LIKE '%_updating';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp-last-login');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp-last-login');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp-last-login');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp-last-login');

