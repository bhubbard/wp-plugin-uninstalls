-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('affiliate_booster_btnbgcolor', 'affiliate_booster_btnbghovercolor', 'affiliate_booster_btnbordercolor', 'affiliate_booster_btnborderhovercolor', 'affiliate_booster_btnbordertype', 'affiliate_booster_btntextcolor', 'affiliate_booster_btntexthovercolor', 'affiliate_booster_prosiconcolor', 'affiliate_booster_consiconcolor', 'affiliate_booster_iconlisticoncolor', 'affiliate_booster_boxbordercolor', 'affiliate_booster_gutenberg_do_activation_redirect', 'dgb_disabled_blocks', 'widget_block');

