-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aoph_pushsender_email', 'aoph_pushsender_domain', 'aoph_pushsender_id', 'aoph_pushsender_post_used', 'aoph_pushsender_post_update', 'aoph_pushsender_post_insert', 'aoph_pushsender_template_insert_subject', 'aoph_pushsender_template_insert_icon', 'aoph_pushsender_template_update_subject', 'aoph_pushsender_template_update_icon', 'aoph_pushsender_token', 'aoph_pushsender_template_update_text', 'aoph_pushsender_template_insert_text');

