-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('parity_campaign_discount_text', 'parity_campaign_discounts', 'parity_campaign_customizations', 'parity_campaign_start_date', 'parity_campaign_end_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('parity_campaign_discount_text', 'parity_campaign_discounts', 'parity_campaign_customizations', 'parity_campaign_start_date', 'parity_campaign_end_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('parity_campaign_discount_text', 'parity_campaign_discounts', 'parity_campaign_customizations', 'parity_campaign_start_date', 'parity_campaign_end_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('parity_campaign_discount_text', 'parity_campaign_discounts', 'parity_campaign_customizations', 'parity_campaign_start_date', 'parity_campaign_end_date');

