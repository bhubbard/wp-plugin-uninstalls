-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crowdfundly_activate_redirect', 'crowdfundly_organization_page_id', 'crowdfundly_all_campaigns_page_id', 'crowdfundly_single_campaign_page_id', 'crowdfundly_intro_notice', 'crowdfundly_url_update', 'crowdfundly_settings', 'auth_meta', 'links_updated_date_format', 'crowdfundly_update_v208', 'crowdfundly_api_sync');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('crowdfundly_organization_page_id', 'crowdfundly_all_campaigns_page_id', 'crowdfundly_single_campaign_page_id', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('crowdfundly_organization_page_id', 'crowdfundly_all_campaigns_page_id', 'crowdfundly_single_campaign_page_id', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('crowdfundly_organization_page_id', 'crowdfundly_all_campaigns_page_id', 'crowdfundly_single_campaign_page_id', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('crowdfundly_organization_page_id', 'crowdfundly_all_campaigns_page_id', 'crowdfundly_single_campaign_page_id', '_wp_page_template');

