#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pacwp_active'
wp option delete 'pacepbr_class_cep'
wp option delete 'pacepbr_class_logradouro'
wp option delete 'pacepbr_class_numero'
wp option delete 'pacepbr_class_complemento'
wp option delete 'pacepbr_class_bairro'
wp option delete 'pacepbr_class_cidade'
wp option delete 'pacepbr_class_estado'

