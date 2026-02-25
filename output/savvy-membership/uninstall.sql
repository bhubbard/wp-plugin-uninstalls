-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('savvme_selected_plan', 'savvme_api_url', 'savvme_api_key', 'savvme_flodesk_api_key', 'savvme_flodesk_workflow_id', 'savvme_flodesk_segment_id', 'savvme_flodesk_segment_name', 'savvme_beehiiv_api_key', 'savvme_beehiiv_publication_id', 'savvme_activecampaign_api_url', 'savvme_activecampaign_api_key', 'savvme_mailerlite_api_token', 'savme_heading_plan', 'savme_content');

