-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('commentformwp_plugin_do_activate', 'commentformwp-nameoption', 'commentformwp-emailoption', 'commentformwp-websiteoption', 'commentformwp-commentbottom', 'commentformwp-cookie-hideshow', 'commentformwp-cookies', 'commentformwp-cookiesbottom', 'commentformwp-submitbtn-right', 'commentformwp-title', 'commentformwp-note', 'commentformwp-reply', 'commentformwp-cancel-reply', 'commentformwp-submitbtn', 'commentformwp-labelyes', 'commentformwp-author', 'commentformwp-email', 'commentformwp-url', 'commentformwp-textarea', 'commentformwp-labelrequired-yes', 'commentformwp-author-plc', 'commentformwp-email-plc', 'commentformwp-url-plc', 'commentformwp-textarea-plc', 'commentformwp-placerequired-yes');

