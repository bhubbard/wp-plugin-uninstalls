-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('proleadsai_onboarding', 'proleadsai_dev_api_url');

