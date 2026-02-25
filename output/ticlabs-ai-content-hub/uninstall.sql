-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ticlabsaich-opt-openai-api-key', 'ticlabsaich-opt-openai-api-model', 'ticlabsaich-opt-openai-model', 'ticlabsaich_license_key');
DELETE FROM wp_options WHERE option_name LIKE '%-img-api-key';
DELETE FROM wp_options WHERE option_name LIKE '%-text-api-key';

