-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mga_meta_gen_api_key', 'mga_meta_gen_api_link', 'mga_meta_gen_full_description', 'mga_meta_gen_short_description', 'mga_meta_gen_gpt_model_name', 'mga_meta_gen_temperature');

