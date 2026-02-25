-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('salesautopilot_newsletter_signup', 'wc_selected_pont');
DELETE FROM wp_usermeta WHERE meta_key IN ('salesautopilot_newsletter_signup', 'wc_selected_pont');
DELETE FROM wp_termmeta WHERE meta_key IN ('salesautopilot_newsletter_signup', 'wc_selected_pont');
DELETE FROM wp_commentmeta WHERE meta_key IN ('salesautopilot_newsletter_signup', 'wc_selected_pont');

