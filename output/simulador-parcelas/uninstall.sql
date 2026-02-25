-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simuparc_token', 'simuparc_tipo_exibicao', 'simuparc_produto_cor_texto', 'simuparc_produto_negrito', 'simuparc_produto_italico', 'simuparc_produto_sublinhado', 'simuparc_posicao', 'simuparc_exibir_em_loop', 'simuparc_loop_alinhamento', 'simuparc_loop_cor_texto', 'simuparc_loop_prefixo');

