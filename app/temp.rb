
  - @items.each_with_index do |item, i|
    - if item.t_date[0..3] != _year
      - if i!=0
        br
      = item.t_date[0..3] + t('year')
      | &nbsp;&nbsp;&nbsp;
    = link_to item.t_date[4..5] + t('month'), (@clazz.nil? ? "" : "/#{@clazz}") + "/archives/#{item.t_date}"
    | (#{item.t_count})&nbsp;&nbsp;
    - _year = item.t_date[0..3]