-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cas_faq_searchbar', 'cas_faq_toparticlesection', 'cas_faq_compatibility', 'cas_faq_show_article_bullets', 'cas_faq_style', 'casengo-faq-simple-style-editor', 'cas_faq_custom_css', 'cas_widget_domain', 'casengo_faq_do_activation_redirect', 'casengo_faq_pagetitle', 'cas_faq_pagetitle', 'cas_faq_enabled');

