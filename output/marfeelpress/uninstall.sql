-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('litespeed-cache-conf', 'mrf_availability', 'rewrite_rules', 'mrf_activation_redirect', 'signup_error');
DELETE FROM wp_options WHERE option_name LIKE '%_on_front';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('no_marfeelize', 'mrf_amp_active', 'mrf_marfeelizable', 'headline');
DELETE FROM wp_usermeta WHERE meta_key IN ('no_marfeelize', 'mrf_amp_active', 'mrf_marfeelizable', 'headline');
DELETE FROM wp_termmeta WHERE meta_key IN ('no_marfeelize', 'mrf_amp_active', 'mrf_marfeelizable', 'headline');
DELETE FROM wp_commentmeta WHERE meta_key IN ('no_marfeelize', 'mrf_amp_active', 'mrf_marfeelizable', 'headline');

