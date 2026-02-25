-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brnwp_testo_pers', 'brnwp_text', 'brnwp_fil_cat', 'brnwp_num_not', 'brnwp_theme', 'brnwp_dim_barra', 'brnwp_col_tit', 'brnwp_col_bar_tit', 'brnwp_col_not', 'brnwp_col_bar', 'brnwp_col_link', 'brnwp_title_content', 'brnwp_style');

