#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simuparc_token'
wp option delete 'simuparc_tipo_exibicao'
wp option delete 'simuparc_produto_cor_texto'
wp option delete 'simuparc_produto_negrito'
wp option delete 'simuparc_produto_italico'
wp option delete 'simuparc_produto_sublinhado'
wp option delete 'simuparc_posicao'
wp option delete 'simuparc_exibir_em_loop'
wp option delete 'simuparc_loop_alinhamento'
wp option delete 'simuparc_loop_cor_texto'
wp option delete 'simuparc_loop_prefixo'

