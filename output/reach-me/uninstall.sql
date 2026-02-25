-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reme_behance', 'reme_facebook', 'reme_github', 'reme_google', 'reme_instagram', 'reme_linkedin', 'reme_reddit', 'reme_snapchat', 'reme_tripadvisor', 'reme_twitter', 'reme_vk', 'reme_youtube', 'reme_email', 'reme_fax', 'reme_mobile', 'reme_phone', 'reme_skype', 'reme_website', 'reme_country', 'reme_state', 'reme_county', 'reme_city', 'reme_street', 'reme_zip');

