# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "jose@test.com", date_of_birth: "20/02/2010", gender: "M", password: "password")
User.create(email: "mary@test.com", date_of_birth: "20/02/1987", gender: "F", password: "password")
Mood.create(user_id: "2", mood_type: "Happy", mood_intensity: "High")
Mood.create(user_id: "1", mood_type: "Anxious", mood_intensity: "High")
Mood.create(user_id: "2", mood_type: "Happy", mood_intensity: "High")
Mood.create(user_id: "2", mood_type: "Sad", mood_intensity: "Low")
Mood.create(user_id: "1", mood_type: "Depressed", mood_intensity: "Low")
Mood.create(user_id: "2", mood_type: "Angry", mood_intensity: "High")

JournalEntry.create(user_id: "1", title: "Feeling Overwhelmed Today", content: "Today has been a tough day for me. I woke up feeling tired and drained, and as the day went on, I found myself feeling more and more overwhelmed. I have a lot on my plate right now with work and personal commitments, and it feels like there aren't enough hours in the day to get everything done.

  I noticed that my mood was quite low throughout the day, and I felt irritable and snappy with my colleagues and loved ones. I also found it hard to focus and stay motivated, which made it difficult to be productive.
  
  To try and manage my overwhelm, I took a few breaks throughout the day to do some deep breathing exercises and stretch my body. I also made sure to take some time for myself in the evening, doing something that brings me joy and relaxation.")

JournalEntry.create(user_id: "2", title: "Grateful for a Wonderful Day", content: "Today has been an amazing day! I woke up feeling refreshed and energized, and everything seemed to fall into place. I had a productive day at work, and I received some positive feedback from my boss, which made me feel really good about my work.

  In the evening, I met up with some friends for dinner and we had a great time catching up and laughing together. It was so nice to connect with them and feel a sense of community and belonging.
  
  As I reflect on the day, I feel incredibly grateful for all the blessings in my life. I have a supportive network of friends and family, a job that I enjoy, and good health. I know that not every day will be this amazing, but I'm savoring the feeling of happiness and contentment while it lasts.")
JournalEntry.create(user_id: "2", title: "Grateful for a Wonderful Day", content: "Today has been an amazing day! I woke up feeling refreshed and energized, and everything seemed to fall into place. I had a productive day at work, and I received some positive feedback from my boss, which made me feel really good about my work.

    In the evening, I met up with some friends for dinner and we had a great time catching up and laughing together. It was so nice to connect with them and feel a sense of community and belonging.
    
    As I reflect on the day, I feel incredibly grateful for all the blessings in my life. I have a supportive network of friends and family, a job that I enjoy, and good health. I know that not every day will be this amazing, but I'm savoring the feeling of happiness and contentment while it lasts.")

JournalEntry.create(user_id: "1", title: "Feeling Overwhelmed Today", content: "Today has been a tough day for me. I woke up feeling tired and drained, and as the day went on, I found myself feeling more and more overwhelmed. I have a lot on my plate right now with work and personal commitments, and it feels like there aren't enough hours in the day to get everything done.

        I noticed that my mood was quite low throughout the day, and I felt irritable and snappy with my colleagues and loved ones. I also found it hard to focus and stay motivated, which made it difficult to be productive.
        
        To try and manage my overwhelm, I took a few breaks throughout the day to do some deep breathing exercises and stretch my body. I also made sure to take some time for myself in the evening, doing something that brings me joy and relaxation.")
JournalEntry.create(user_id: "1", title: "Feeling Overwhelmed Today", content: "Today has been a tough day for me. I woke up feeling tired and drained, and as the day went on, I found myself feeling more and more overwhelmed. I have a lot on my plate right now with work and personal commitments, and it feels like there aren't enough hours in the day to get everything done.

            I noticed that my mood was quite low throughout the day, and I felt irritable and snappy with my colleagues and loved ones. I also found it hard to focus and stay motivated, which made it difficult to be productive.
            
            To try and manage my overwhelm, I took a few breaks throughout the day to do some deep breathing exercises and stretch my body. I also made sure to take some time for myself in the evening, doing something that brings me joy and relaxation.")
JournalEntry.create(user_id: "1", title: "Feeling Overwhelmed Today", content: "Today has been a tough day for me. I woke up feeling tired and drained, and as the day went on, I found myself feeling more and more overwhelmed. I have a lot on my plate right now with work and personal commitments, and it feels like there aren't enough hours in the day to get everything done.

                I noticed that my mood was quite low throughout the day, and I felt irritable and snappy with my colleagues and loved ones. I also found it hard to focus and stay motivated, which made it difficult to be productive.
                
                To try and manage my overwhelm, I took a few breaks throughout the day to do some deep breathing exercises and stretch my body. I also made sure to take some time for myself in the evening, doing something that brings me joy and relaxation.")
