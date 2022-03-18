# pillar['interface']['inter']  =>  public access
# pillar['interface']['oob']    =>  oob

{% if 'tpdt' in grains['id'] or 'skc1' in grains['id'] or 'tchn' in grains['id'] %}
interface:
    inter: bond0
    oob: em4
{% elif 'lab' in grains['id'] %}
interface:
    inter: ens1f0
    oob: ens1f0
{% else %}
interface:
    inter:
    oob:
{% endif %}
