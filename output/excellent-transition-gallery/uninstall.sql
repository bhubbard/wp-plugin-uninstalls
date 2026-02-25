-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('etgwtlt_pluginurl', 'etgwtlt_xmllocation', 'etgwtlt_pause', 'etgwtlt_transduration', 'etgwtlt_title');

