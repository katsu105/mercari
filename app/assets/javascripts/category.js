$(document).on('turbolinks:load', function() {

  var cat_seach = $("#cat");

  function appendMselect() {
    var html =  
    `<div class="select-wrap" id="add-Mcat">
      <select name="item[category_id]" id="m_category" class="select-default">
          <option value>---</option>
      </select>
      <i class="fa fa-angle-down icon icon-angle-down"></i>
    </div>`
    cat_seach.append(html)
  }

  function appendSselect() {
    var html =  
    `<div class="select-wrap" id="add-Scat">
      <select name="item[category_id]" id="s_category" class="select-default">
          <option value>---</option>
      </select>
      <i class="fa fa-angle-down icon icon-angle-down"></i>
    </div>`
    cat_seach.append(html)
  }

  // optionタグを追加
  function appendMcat(m_cat) {
    $("#m_category").append(
      $("<option>")
        .val($(m_cat).attr('id'))
        .text($(m_cat).attr('name'))
    )
  }

  function appendScat(s_cat) {
    $("#s_category").append(
      $("<option>")
        .val($(s_cat).attr('id'))
        .text($(s_cat).attr('name'))
    )
  }

  // Lカテゴリーが選択された時のアクション
  $("#l_category").on('change', function() {
    l_cat = $(this).val()
    console.log($(this))
    $("#add-Mcat, #add-Scat").remove()

      $.ajax({
        type: "GET",
        url: "/items/search",
        data: {l_cat: l_cat},
        dataType: 'json'
      })
      .done(function(m_cat) {
        appendMselect()
        m_cat.forEach(function(m_cat) {
          appendMcat(m_cat)
        })
      })
    })

// Mカテゴリーが選択された時のアクション
  $(document).on('change', "#m_category", function() {
    m_cat = $(this).val()
    $("#add-Scat").remove()
    
  
    $.ajax({
      type: "GET",
      url: "/items/search",
      data: {m_cat: m_cat},
      dataType: 'json'
    })
    .done(function(s_cat) {
      appendSselect()
      s_cat.forEach(function(s_cat) {
        appendScat(s_cat)
      })
    })
  })
})
