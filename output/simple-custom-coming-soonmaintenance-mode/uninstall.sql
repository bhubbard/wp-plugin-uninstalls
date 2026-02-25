-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sccs_coming_soon_enabled', 'sccs_coming_soon_message', 'sccsmm_enable', 'sccsmm_timer_end', 'sccsmm_timer_redirect', 'sccsmm_template', 'sccsmm_title', 'sccsmm_message', 'sccsmm_seo_title', 'sccsmm_seo_description', 'sccsmm_custom_css', 'sccsmm_logo_url');

