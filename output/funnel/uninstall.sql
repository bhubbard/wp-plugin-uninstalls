-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('funnel_emails_subject', 'funnel_emails_body', 'funnel_pages_enabled', 'funnel_user_to_lead', 'funnel_user_state', 'funnel_referrer_enabled', 'funnel_referrer_param', 'funnel_referrer_state');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_id', 'funnel_user_state', 'color', 'generation', 'interests', 'purchase_motivations', 'values', 'formal_level');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_id', 'funnel_user_state', 'color', 'generation', 'interests', 'purchase_motivations', 'values', 'formal_level');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_id', 'funnel_user_state', 'color', 'generation', 'interests', 'purchase_motivations', 'values', 'formal_level');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_id', 'funnel_user_state', 'color', 'generation', 'interests', 'purchase_motivations', 'values', 'formal_level');

