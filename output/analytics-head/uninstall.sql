-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wordpress_ln_gah_ad', 'wordpress_ln_gah_id', 'wordpress_ln_p_ah_ga_id', 'wordpress_ln_p_ah_add_for_admins', 'wordpress_ln_p_ah', 'wordpress_lnpo_ah', 'rmnd_phylax_analytics_head');

