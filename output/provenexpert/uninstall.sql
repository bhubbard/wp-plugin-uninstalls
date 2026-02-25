-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('provenExpertAccount', 'provenexpertUpdateSlugs', 'provenExpertApiId', 'provenExpertApiKey', 'provenExpertApiDisabled', 'provenExpertPluginId', 'provenExpertDebug', 'provenExpertVersion', 'provenExpertSeals', 'provenExpertWidgets');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE 'provenExpertDismissed-%';
DELETE FROM wp_options WHERE option_name LIKE 'provenExpertSeal%';
DELETE FROM wp_options WHERE option_name LIKE 'provenExpertWidget%';

