-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('testimonials_openai_validate', 'elementor_experiment-e_swiper_latest', 'elementor_openai_api_key');

