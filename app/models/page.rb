class Page < ApplicationRecord
    has_one_attached :image

    validates :name, presence: {message: "Wpisz tytuł."}, 
    length: {in: 3..20, message: "Tytuł może zawierać  od 3 do 20 znaków."}

    validates :description, presence: {message: "Wpisz opis."},
    length: {maximum: 500, message: "Opis nie może przekraczać 500 znaków."}

    validates :github, presence: {message: "Wpisz link do github'a."},
    format: {with: /https:\/\/github.com\/przemo88\/[Aa-zZ]{1,}.[Aa-zZ]{1,}/, message: "To nie jest poprawny link do github'a."}

    validates :website, presence: {message: "Wpisz link do strony."},
    format: {with: /https:\/\/[aA-zZ]{1,}.przemyslawprzewoznik.pl/, message: "To nie jest poprawny link do strony."}
    
    validates :image, presence: {message: "Dodaj zdjęcie."}

end
