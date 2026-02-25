-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('free_contact_us_monetz_free_offer', 'free_contact_us_opt_intelligence_pid_no', 'free_contact_us_contact_email', 'free_contact_us_auto_email', 'free_contact_us_auto_subject', 'free_contact_us_smtp_secure', 'free_contact_us_smtp_port', 'free_contact_us_click_link_url', 'free_contact_us_auto_reply_on', 'free_contact_us_auto_from_email', 'free_contact_us_auto_from_name', 'free_contact_us_aw_list_id', 'free_contact_us_aweber_on', 'free_contact_us_auth_code', 'free_contact_us_access_secret', 'free_contact_us_access_key', 'free_contact_us_customer_secret', 'free_contact_us_customer_key', 'free_contact_us_aw_subscr_title', 'free_contact_us_unsbr_email');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Layout');
DELETE FROM wp_usermeta WHERE meta_key IN ('Layout');
DELETE FROM wp_termmeta WHERE meta_key IN ('Layout');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Layout');

