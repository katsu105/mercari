$(document).on('turbolinks:load', function() {

  var cat_seach = $("#cat");

  function appendSelect(catNum) {
    if(catNum == 1) {
      var contents_id = `add-Mcat`
      var select_id = `m_category`
    } else if(catNum == 2) {
      var contents_id = `add-Scat`
      var select_id = `s_category`
    }
    var html =  
      `<div class="select-wrap" id="${contents_id}">
        <select name="item[category_id]" id="${select_id}" class="select-default">
            <option value>---</option>
        </select>
        <i class="fa fa-angle-down icon icon-angle-down"></i>
      </div>`
    cat_seach.append(html)
  }

  // optionを追加
  function appendCat(catOption, catNum) {
    if (catNum == 1) {
      var appendId = $("#m_category")
    } else if (catNum == 2) {
      var appendId = $("#s_category")
    }
    appendId.append(
      $("<option>")
        .val($(catOption).attr('id'))
        .text($(catOption).attr('name'))
    )
  }

  // Lカテゴリーが選択された時のアクション
  $("#l_category").on('change', function() {
    l_cat = $(this).val()
    $("#add-Mcat, #add-Scat").remove()

      $.ajax({
        type: "GET",
        url: "/items/search",
        data: {l_cat: l_cat},
        dataType: 'json'
      })
      
      .done(function(m_cat) {
        var catNum = 1
        appendSelect(catNum)
        m_cat.forEach(function(m_cat) {
          appendCat(m_cat, catNum)
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
      var catNum = 2
      appendSelect(catNum)
      s_cat.forEach(function(s_cat) {
        appendCat(s_cat, catNum)
      })
    })
  })
})