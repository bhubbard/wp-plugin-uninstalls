-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('FIELD_bid', 'FIELD_ccy', 'FIELD_autodonate', 'FIELD_premium_amount', 'FIELD_premium_caption', 'FIELD_premium_prompt', 'FIELD_premium_color_background', 'FIELD_premium_color_edge', 'FIELD_premium_sticky_purchase', 'FIELD_premium_category_amount', 'FIELD_premium_role_exempt', 'FIELD_donation_amount', 'FIELD_donation_caption', 'FIELD_donation_prompt', 'FIELD_donation_thanks');

