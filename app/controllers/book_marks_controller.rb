class BookMarksController < ApplicationController
  
  def create
    book_mark = current_user.book_marks.create(post_id: params[:post_id])
    redirect_to request.referer, notice: "#{book_mark.post.user.name}さんの投稿をお気に入り登録しました"
  end

  def destroy
    book_mark = current_user.book_marks.find_by(id: params[:id]).destroy
    redirect_to request.referer, notice: "#{book_mark.post.user.name}さんの投稿をお気に入り解除しました"
  end
  
end
