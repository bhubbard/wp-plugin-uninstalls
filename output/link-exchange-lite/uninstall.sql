-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('link_exchange_use_captcha', 'link_exchange_captcha_private_key', 'link_exchange_captcha_public_key', 'link_exchange_email_admin', 'link_exchange_privacy');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('link_exchange_user_name', 'link_exchange_user_email', 'link_exchange_landing_page_url', 'link_exchange_site_banner_url', 'link_exchange_reciprocal_link_url', 'link_exchange_notes', 'link_exchange_accepted_once', 'link_exchange_rejected_once');
DELETE FROM wp_usermeta WHERE meta_key IN ('link_exchange_user_name', 'link_exchange_user_email', 'link_exchange_landing_page_url', 'link_exchange_site_banner_url', 'link_exchange_reciprocal_link_url', 'link_exchange_notes', 'link_exchange_accepted_once', 'link_exchange_rejected_once');
DELETE FROM wp_termmeta WHERE meta_key IN ('link_exchange_user_name', 'link_exchange_user_email', 'link_exchange_landing_page_url', 'link_exchange_site_banner_url', 'link_exchange_reciprocal_link_url', 'link_exchange_notes', 'link_exchange_accepted_once', 'link_exchange_rejected_once');
DELETE FROM wp_commentmeta WHERE meta_key IN ('link_exchange_user_name', 'link_exchange_user_email', 'link_exchange_landing_page_url', 'link_exchange_site_banner_url', 'link_exchange_reciprocal_link_url', 'link_exchange_notes', 'link_exchange_accepted_once', 'link_exchange_rejected_once');

