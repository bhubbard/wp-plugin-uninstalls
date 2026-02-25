-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quickppr_redirects', 'quickppr_redirects_meta', 'ppr_override-nofollow', 'ppr_override-newwindow', 'ppr_use-jquery', 'ppr_qpprptypeok', 'ppr_override-redirect-type', 'ppr_override-active', 'ppr_override-URL', 'ppr_override-rewrite', 'qppr_meta_addon_content', 'ppr_meta-message', 'qppr_meta_addon_sec', 'ppr_meta-seconds', 'ppr_override-casesensitive', 'ppr_show-columns', 'ppr_version', 'ppr_meta_clean', 'ppr_use-custom-post-types', 'qppr_jQuery_hide_message2', 'qppr_meta_addon_load', 'qppr_meta_addon_trigger', 'qppr_meta_append_to', 'enable_tag_redirect', 'qppr_jQuery_hide_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', '_pprredirect_url', '_pprredirect_type', '_pprredirect_active', '_pprredirect_rewritelink', '_pprredirect_newwindow', '_pprredirect_relnofollow', '_pprredirect_meta_secs', 'qppr_meta_trigger', 'qppr_meta_load', 'qppr_meta_content', 'qppr_meta_append');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', '_pprredirect_url', '_pprredirect_type', '_pprredirect_active', '_pprredirect_rewritelink', '_pprredirect_newwindow', '_pprredirect_relnofollow', '_pprredirect_meta_secs', 'qppr_meta_trigger', 'qppr_meta_load', 'qppr_meta_content', 'qppr_meta_append');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', '_pprredirect_url', '_pprredirect_type', '_pprredirect_active', '_pprredirect_rewritelink', '_pprredirect_newwindow', '_pprredirect_relnofollow', '_pprredirect_meta_secs', 'qppr_meta_trigger', 'qppr_meta_load', 'qppr_meta_content', 'qppr_meta_append');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', '_pprredirect_url', '_pprredirect_type', '_pprredirect_active', '_pprredirect_rewritelink', '_pprredirect_newwindow', '_pprredirect_relnofollow', '_pprredirect_meta_secs', 'qppr_meta_trigger', 'qppr_meta_load', 'qppr_meta_content', 'qppr_meta_append');

