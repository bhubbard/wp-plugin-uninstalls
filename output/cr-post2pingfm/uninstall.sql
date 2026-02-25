-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cl_post_pingfm_api_key', 'cl_post_pingfm_message_template_1', 'cl_post_pingfm_message_template_2', 'cl_post_pingfm_message_template_3', 'cl_post_pingfm_message_template_4', 'cl_post_pingfm_message_template_5', 'cl_post_pingfm_message_template_6', 'cl_post_pingfm_message_template_7', 'cl_post_pingfm_message_template_8', 'cl_post_pingfm_message_template_9', 'cl_post_pingfm_message_template_10', 'cr_ping_connection_method', 'cr_post_pingfm_template_mode', 'cl_post_pingfm_ping_mode', 'cl_post_pingfm_ping_mode_category', 'cl_post_pingfm_publish_mode', 'cl_post_pingfm_republish_template', 'cl_post_pingfm_ping_republish_template_text');
DELETE FROM wp_options WHERE option_name LIKE 'cr_post_2_pingfm_submit_post_submitted_%';
DELETE FROM wp_options WHERE option_name LIKE 'cl_post_pingfm_message_template_%';
DELETE FROM wp_options WHERE option_name LIKE '%_1';
DELETE FROM wp_options WHERE option_name LIKE '%_2';
DELETE FROM wp_options WHERE option_name LIKE '%_3';
DELETE FROM wp_options WHERE option_name LIKE '%_4';
DELETE FROM wp_options WHERE option_name LIKE '%_5';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cr_post_2_pingfm_custom_message', '_cr_post_2_pingfm_dont_ping_this_post', '_cr_post_2_pingfm_custom_message_send_on_update');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cr_post_2_pingfm_custom_message', '_cr_post_2_pingfm_dont_ping_this_post', '_cr_post_2_pingfm_custom_message_send_on_update');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cr_post_2_pingfm_custom_message', '_cr_post_2_pingfm_dont_ping_this_post', '_cr_post_2_pingfm_custom_message_send_on_update');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cr_post_2_pingfm_custom_message', '_cr_post_2_pingfm_dont_ping_this_post', '_cr_post_2_pingfm_custom_message_send_on_update');

