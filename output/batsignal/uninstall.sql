-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('l0nch_my_batsignal_option_expirecookie', 'l0nch_my_batsignal_option_declencheur', 'l0nch_my_batsignal_option_declencheur_unit', 'l0nch_my_batsignal_option_powered', 'l0nch_my_batsignal_option_newsletter_html');

