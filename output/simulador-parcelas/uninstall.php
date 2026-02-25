<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simuparc_token');
delete_site_option('simuparc_token');
delete_option('simuparc_tipo_exibicao');
delete_site_option('simuparc_tipo_exibicao');
delete_option('simuparc_produto_cor_texto');
delete_site_option('simuparc_produto_cor_texto');
delete_option('simuparc_produto_negrito');
delete_site_option('simuparc_produto_negrito');
delete_option('simuparc_produto_italico');
delete_site_option('simuparc_produto_italico');
delete_option('simuparc_produto_sublinhado');
delete_site_option('simuparc_produto_sublinhado');
delete_option('simuparc_posicao');
delete_site_option('simuparc_posicao');
delete_option('simuparc_exibir_em_loop');
delete_site_option('simuparc_exibir_em_loop');
delete_option('simuparc_loop_alinhamento');
delete_site_option('simuparc_loop_alinhamento');
delete_option('simuparc_loop_cor_texto');
delete_site_option('simuparc_loop_cor_texto');
delete_option('simuparc_loop_prefixo');
delete_site_option('simuparc_loop_prefixo');

