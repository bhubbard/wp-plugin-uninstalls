-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cirvbo_enable_article_schema', 'cirvbo_enable_organization_schema', 'cirvbo_enable_product_schema', 'cirvbo_enable_faq_schema', 'cirvbo_enable_breadcrumb_schema', 'cirvbo_enable_howto_schema', 'cirvbo_organization_name', 'cirvbo_debug_mode', 'cirvbo_debug_log', 'cirvbo_activation_time', 'cirvbo_rating_notice_dismissed', 'cirvbo_migration_complete', 'cirvbo_legacy_cleanup_complete', 'ssb_enable_article_schema', 'ssb_enable_organization_schema', 'ssb_enable_product_schema', 'ssb_enable_faq_schema', 'ssb_enable_breadcrumb_schema', 'ssb_enable_howto_schema', 'ssb_organization_name', 'ssb_debug_mode', 'ssb_debug_log', 'ssb_activation_time', 'ssb_rating_notice_dismissed', 'cirvbo_enable_review_schema', 'cirvbo_enable_recipe_schema', 'cirvbo_enable_event_schema');
DELETE FROM wp_options WHERE option_name LIKE 'cirvbo_organization_schema_%';

