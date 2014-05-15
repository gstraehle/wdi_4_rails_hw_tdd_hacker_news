Article.delete_all
Comment.delete_all

article1 = Article.create!(title: 'TEST1Sharable analyzing model', url:'http://erdman.org/letha.romaguera', created_at:'2014-05-13 02:52:04 UTC')
article2 = Article.create!(title: 'Distributed coherent array', url:'http://lynchwehner.com/aurelia', created_at:'2014-05-13 02:52:19 UTC')
article3 = Article.create!(title: 'Persistent local concept', url:'http://bradtke.name/cornelius', created_at:'2014-05-13 02:52:24 UTC')
article4 = Article.create!(title: 'Programmable demand-driven Graphical User Interface', url:'http://fayrunolfsdottir.org/cydney.bogisich', created_at:'2014-05-13 02:52:31 UTC')
article5 = Article.create!(title: 'Innovative coherent project', url:'http://leannonschamberger.org/leonora', created_at:'2014-05-13 02:52:31 UTC')
article6 = Article.create!(title: 'TEST FINAL Go time!', url:'http://gotime.com', created_at:'2014-05-13 03:35:47 UTC')

article1.comments << Comment.create!(message: 'TEST1 Non est minima sunt.', created_at:'Non est minima sunt.')
article2.comments << Comment.create!(message: 'Recusandae itaque et et.', created_at:'Recusandae itaque et et.')
article3.comments << Comment.create!(message: 'Est animi vel corrupti maxime aut.', created_at:'Est animi vel corrupti maxime aut.')
article4.comments << Comment.create!(message: 'Aspernatur quod a libero fugit facilis voluptatem natus ad.', created_at:'Aspernatur quod a libero fugit facilis voluptatem natus ad.')
article5.comments << Comment.create!(message: 'Quae odio sed voluptatem eum dolor cum.', created_at:'Quae odio sed voluptatem eum dolor cum.')
article3.comments << Comment.create!(message: 'Magni non et et sunt occaecati quia ut.', created_at:'Magni non et et sunt occaecati quia ut.')
article4.comments << Comment.create!(message: 'Fuga sapiente atque est reiciendis sunt aut cum.', created_at:'Fuga sapiente atque est reiciendis sunt aut cum.')
article4.comments << Comment.create!(message: 'Dolorem ad pariatur aliquam quod temporibus iusto.', created_at:'Dolorem ad pariatur aliquam quod temporibus iusto.')
article4.comments << Comment.create!(message: 'Non quo accusantium sint.', created_at:'Non quo accusantium sint.')
article3.comments << Comment.create!(message: 'Rerum assumenda enim quibusdam minus quo dignissimos rem autem.', created_at:'Rerum assumenda enim quibusdam minus quo dignissimos rem autem.')
article4.comments << Comment.create!(message: 'Nisi est quo ut qui occaecati dolorem natus minus.', created_at:'Nisi est quo ut qui occaecati dolorem natus minus.')
article4.comments << Comment.create!(message: 'Placeat et exercitationem nihil asperiores dolor delectus.', created_at:'Placeat et exercitationem nihil asperiores dolor delectus.')

