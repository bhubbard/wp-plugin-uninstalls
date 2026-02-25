-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aal_apikey', 'aal_geminiaion', 'aal_filterpriority', 'aal_showwpforo', 'aal_showacf', 'aal_showmetabox', 'aal_showexcerpt', 'aal_showcatdesc', 'aal_showwidget', 'aal_excluderulesdatebefore', 'aal_exclude', 'aal_pagevisits', 'aal_apistatus', 'aal_querylimit', 'aal_sugint', 'aal_amazonactive', 'aal_clickbankactive', 'aal_awinactive', 'aal_shareasaleactive', 'aal_cjactive', 'aal_ebayactive', 'aal_bestbuyactive', 'aal_walmartactive', 'aal_envatoactive', 'aal_rakutenactive', 'aal_discoveryjapanactive', 'aal_apiexpired', 'aal_settings_updated', 'aal_sebayactive', 'aal_cloakurl', 'aal_pluginstatus', 'aal_showhome', 'aal_showlist', 'aal_showhtags', 'aal_notimes', 'aal_notimescustom', 'aal_iscloacked', 'aal_cssclass', 'aal_ilcssclass', 'aal_skipadd', 'aal_disclosure', 'aal_il_disclosure', 'aal_display', 'aal_displayc', 'aal_samekeyword', 'aal_samelink', 'aal_linkdistribution', 'aal_target', 'aal_relation', 'aal_il_target');
DELETE FROM wp_options WHERE option_name IN ('aal_il_relation', 'aal_priority', 'aal_langsupport', 'aal_casesensitive', 'aal_excludewords', 'aal_excludecats', 'aal_excludetags', 'aal_spoption', 'aal_wordreplace', 'aal_linkcolor', 'aal_ismulinks', 'aal_showrss', 'aal_clickbankid', 'aal_clickbankcat', 'aal_clickbankgravity', 'aal_amazonlocal', 'aal_amazonid', 'aal_amazonapikey', 'aal_amazonsecret', 'aal_amazoncat', 'aal_amazondisplaylinks', 'aal_amazondisplaywidget', 'aal_shareasaleid', 'aal_awinid', 'aal_ebayid', 'aal_bestbuyid', 'aal_walmartid', 'aal_envatosite', 'aal_envatoid', 'aal_rakutenid', 'aal_discoveryjapanid', 'aal_discoveryjapanapikey', 'aal_showspan', 'aal_option_dismissed99', 'aal_option_dismissed98', 'aal_statsactive', 'aal_statsregusers', 'wpaal_cache_cleared_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aal_cache_links', 'aal_manualgenerated');
DELETE FROM wp_usermeta WHERE meta_key IN ('aal_cache_links', 'aal_manualgenerated');
DELETE FROM wp_termmeta WHERE meta_key IN ('aal_cache_links', 'aal_manualgenerated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aal_cache_links', 'aal_manualgenerated');

