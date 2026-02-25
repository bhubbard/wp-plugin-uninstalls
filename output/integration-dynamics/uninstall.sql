-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcrm_log_level', 'wordpresscrm_custom_post_types', 'wpcrm_binding_default', 'wpcrm_binding', 'alexacrm_options', 'alexacrm_forms_options', 'alexacrm_oauth_options', 'wordpresscrm_registration_options', 'alexacrm_role_options', 'wordpresscrm_search_options');
DELETE FROM wp_options WHERE option_name LIKE '%options';
DELETE FROM wp_options WHERE option_name LIKE '%messages';
DELETE FROM wp_options WHERE option_name LIKE '%attachments';
DELETE FROM wp_options WHERE option_name LIKE '%forms';
DELETE FROM wp_options WHERE option_name LIKE '%oauth';
DELETE FROM wp_options WHERE option_name LIKE '%registration';
DELETE FROM wp_options WHERE option_name LIKE '%roles';
DELETE FROM wp_options WHERE option_name LIKE '%search';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_alexacrm_databinding_entity', '_alexacrm_databinding_parametername', '_alexacrm_databinding_isdefaultview', '_alexacrm_databinding_querystring', '_wordpresscrm_databinding_entity', '_wordpresscrm_databinding_parametername', '_wordpresscrm_databinding_isdefaultview', '_wordpresscrm_databinding_querystring', '_wordpresscrm_databinding_empty_behavior');
DELETE FROM wp_usermeta WHERE meta_key IN ('_alexacrm_databinding_entity', '_alexacrm_databinding_parametername', '_alexacrm_databinding_isdefaultview', '_alexacrm_databinding_querystring', '_wordpresscrm_databinding_entity', '_wordpresscrm_databinding_parametername', '_wordpresscrm_databinding_isdefaultview', '_wordpresscrm_databinding_querystring', '_wordpresscrm_databinding_empty_behavior');
DELETE FROM wp_termmeta WHERE meta_key IN ('_alexacrm_databinding_entity', '_alexacrm_databinding_parametername', '_alexacrm_databinding_isdefaultview', '_alexacrm_databinding_querystring', '_wordpresscrm_databinding_entity', '_wordpresscrm_databinding_parametername', '_wordpresscrm_databinding_isdefaultview', '_wordpresscrm_databinding_querystring', '_wordpresscrm_databinding_empty_behavior');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_alexacrm_databinding_entity', '_alexacrm_databinding_parametername', '_alexacrm_databinding_isdefaultview', '_alexacrm_databinding_querystring', '_wordpresscrm_databinding_entity', '_wordpresscrm_databinding_parametername', '_wordpresscrm_databinding_isdefaultview', '_wordpresscrm_databinding_querystring', '_wordpresscrm_databinding_empty_behavior');

