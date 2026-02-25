-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpotgg_emojis', 'wpotgg_blocks_css', 'wpotgg_duotone', 'wpotgg_wlwlink', 'wpotgg_rsdlink', 'wpotgg_wpgen', 'wpotgg_feedlinks', 'wpotgg_restlink', 'wpotgg_oembed', 'wpotgg_shortlink', 'wpotgg_prefetch', 'wpotgg_autosave', 'wpotgg_moderation_links', 'wpotgg_redirect', 'wpotgg_classiceditor', 'wpotgg_classicwidgets', 'wpotgg_xmlrpc', 'wpotgg_urlfield', 'wpotgg_authorsitemap', 'wpotgg_categorysitemap', 'wpotgg_imagemeta', 'wpotgg_emailverification', 'wpotgg_excerptmore', 'wpotgg_excerptlength', 'wpotgg_trash', 'wpotgg_revisions');

