#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pi_mmq_do_activation_redirect'
wp option delete 'pisol_mmq_category_rules'
wp option delete 'pi_mmq_min_quantity_enabled'
wp option delete 'pi_mmq_max_quantity_enabled'
wp option delete 'pi_mmq_min_exclude_product'
wp option delete 'pi_mmq_min_amount_enabled'
wp option delete 'pi_mmq_min_amount_0'
wp option delete 'pi_mmq_min_amount_more_then_min_equal_to_min'
wp option delete 'pi_mmq_enable_circular_progress'
wp option delete 'pi_mmq_minimum_amount_position'
wp option delete 'pi_mmq_minimum_amount_background_color'
wp option delete 'pi_mmq_minimum_amount_font_color'
wp option delete 'pi_mmq_minimum_amount_close_color'
wp option delete 'pi_mmq_minimum_amount_font_weight'
wp option delete 'pi_mmq_minimum_amount_close_weight'
wp option delete 'pi_mmq_minimum_amount_font_size'
wp option delete 'pi_mmq_minimum_amount_close_size'
wp option delete 'pi_mmq_min_amount_bar_display'
wp option delete 'pi_mmq_min_amount'
wp option delete 'pi_mmq_product_loop_position'
wp option delete 'pi_mmq_max_0'
wp option delete 'pi_mmq_max_more_then_0_less_then_max'
wp option delete 'pi_mmq_max_equal_to_max'
wp option delete 'pi_mmq_min_0'
wp option delete 'pi_mmq_min_more_then_0_less_then_min'
wp option delete 'pi_mmq_min_more_then_min_equal_to_min'
wp option delete 'pi_mmq_min_max_0'
wp option delete 'pi_mmq_min_max_more_then_0_less_then_min'
wp option delete 'pi_mmq_min_max_more_then_min_less_then_max'
wp option delete 'pi_mmq_min_max_equal_to_max'
wp option delete 'pi_mmq_min_quantity'
wp option delete 'pi_mmq_max_quantity'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pisol_mmq_disable_global_min_max'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pisol_mmq_disable_global_min_max'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pisol_mmq_disable_global_min_max'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pisol_mmq_disable_global_min_max'"
